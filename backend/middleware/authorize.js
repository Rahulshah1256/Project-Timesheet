const crypto = require('crypto');
const algorithm = 'aes-256-ctr';
const temp = [8, 6, 7, 5, 3, 0, 9];

exports.encryptPassWord = (req, res, next) => {
    
    const password =  req.body.password;
    let encryptedPassword =  encrypt(password);
    req.body.password = encryptedPassword;
    return next();
}

const encrypt = (password) => {
    const secretKey = crypto.randomBytes(32);
    
    const iv = crypto.randomBytes(16);
    const cipher = crypto.createCipheriv(algorithm, Buffer.from(temp), iv);
    const encrypted = Buffer.concat([cipher.update(password), cipher.final()]);

    return {
        iv: iv.toString('hex'),
        content: encrypted.toString('hex'),
        secretKey: secretKey
    };
};

exports.decrypt = (password) => {
    console.log("secretKey", secretKey)
    let iv = Buffer.from(password.iv, 'hex');
    let encryptedText = Buffer.from(password.content, 'hex');
    let decipher = crypto.createDecipheriv(algorithm, Buffer.from(temp), iv);
    let decrypted = decipher.update(encryptedText);
    decrypted = Buffer.concat([decrypted, decipher.final()]);
    return decrypted.toString();
 }













 