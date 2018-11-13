<?php


// 应用公共文件

// 引入PHPMailer的核心文件
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
function mailto($to, $title, $content)
{
    $mail = new PHPMailer(true);                             // 实例化PHPMailer核心类
    try {
        //Server settings
        $mail->SMTPDebug = 0;                              // 是否启用smtp的debug进行调试 开发环境建议开启 生产环境注释掉即可 默认关闭debug调试模式
        $mail->CharSet = 'utf-8';
        $mail->isSMTP();                                     // 使用smtp鉴权方式发送邮件
        $mail->Host = 'smtp.qq.com';                          // 链接qq域名邮箱的服务器地址
        $mail->SMTPAuth = true;                               // smtp需要鉴权 这个必须是true
        $mail->Username = '1601149683@qq.com';                 // smtp登录的账号 QQ邮箱即可
        $mail->Password = 'vxsvvuidoyifhcdd';                   // smtp登录的密码 使用生成的授权码
        $mail->SMTPSecure = 'ssl';                            // 设置使用ssl加密方式登录鉴权
        $mail->Port = 465;                                    // 设置ssl连接smtp服务器的远程服务器端口号

        //Recipients
        $mail->setFrom('1601149683@qq.com', '松松');         // 设置收件人邮箱地址
        $mail->addAddress("405014088@qq.com","仙");          // 添加多个收件人 则多次调用方法即可

        //Content
        $mail->isHTML(true);                             // 邮件正文是否为html编码 注意此处是一个方法
        $mail->Subject = $title;
        $mail->Body    = $content;                              // 添加邮件正文

        return $mail->send();                                   // 发送邮件 返回状态
    } catch (Exception $e) {
        exception($mail->ErrorInfo, 1001);
    }
}

//把span字符串替换成a
function replace($data)
{
    return str_replace('span', 'a', $data);
}

//把字符串转换为数组
function strToArray($data)
{
    return explode('|', $data);
}
