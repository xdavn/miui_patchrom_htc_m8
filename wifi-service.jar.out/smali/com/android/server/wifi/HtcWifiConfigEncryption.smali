.class public Lcom/android/server/wifi/HtcWifiConfigEncryption;
.super Ljava/lang/Object;
.source "HtcWifiConfigEncryption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWifiConfigEncryption"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private byte2String([B)Ljava/lang/String;
    .locals 7
    .param p1, "byteArray"    # [B

    .prologue
    .line 175
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 184
    :goto_0
    return-object v4

    .line 177
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 178
    .local v0, "HEX":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 180
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 181
    aget-byte v1, p1, v2

    .line 182
    .local v1, "b":B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const-string v5, "HtcWifiConfigEncryption"

    const-string v6, "decrypt()...v2 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string p1, "00:11:22:33:44:55"

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    const-string v5, "HtcWifiConfigEncryption"

    const-string v6, "decrypt()...v2 ERROR: encrypted is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 p2, 0x0

    .line 149
    .end local p2    # "encrypted":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 135
    .restart local p2    # "encrypted":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getKey([B)[B

    move-result-object v4

    .line 136
    .local v4, "key":[B
    if-nez v4, :cond_2

    .line 137
    const-string v5, "HtcWifiConfigEncryption"

    const-string v6, "decrypt()...v2 ERROR: getKey() fails!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v4    # "key":[B
    :catch_0
    move-exception v2

    .line 148
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "HtcWifiConfigEncryption"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt()...v2 ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->decrypt_AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 141
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "key":[B
    :cond_2
    :try_start_1
    const-string v5, "HtcWifiConfigEncryption"

    const-string v6, "Decrypt...v2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 143
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "1234567890123456"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 144
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 145
    invoke-direct {p0, p2}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->string2Byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 146
    .local v1, "decrypted":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v5

    goto :goto_0
.end method

.method private decrypt_AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const-string v4, "HtcWifiConfigEncryption"

    const-string v5, "decrypt()...v1 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string p1, "00:11:22:33:44:55"

    .line 98
    :cond_0
    if-nez p2, :cond_1

    .line 99
    const-string v4, "HtcWifiConfigEncryption"

    const-string v5, "decrypt()...1 ERROR: encrypted is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 p2, 0x0

    .line 117
    .end local p2    # "encrypted":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 104
    .restart local p2    # "encrypted":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getKey([B)[B

    move-result-object v3

    .line 105
    .local v3, "key":[B
    if-nez v3, :cond_2

    .line 106
    const-string v4, "HtcWifiConfigEncryption"

    const-string v5, "decrypt()...v1 ERROR: getKey() fails!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v3    # "key":[B
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "HtcWifiConfigEncryption"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt()...v1 ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return Origin String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "key":[B
    :cond_2
    :try_start_1
    const-string v4, "HtcWifiConfigEncryption"

    const-string v5, "Decrypt...v1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 113
    invoke-direct {p0, p2}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->string2Byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 114
    .local v1, "decrypted":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v4

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "plaintext"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v6, "HtcWifiConfigEncryption"

    const-string v7, "encrypt()...v2 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string p1, "00:11:22:33:44:55"

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    const-string v6, "HtcWifiConfigEncryption"

    const-string v7, "encrypt()...v2 ERROR: plaintext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-object v5

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getKey([B)[B

    move-result-object v4

    .line 76
    .local v4, "key":[B
    if-nez v4, :cond_2

    .line 77
    const-string v6, "HtcWifiConfigEncryption"

    const-string v7, "encrypt()...v2 ERROR: getKey() fails!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v4    # "key":[B
    :catch_0
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "HtcWifiConfigEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encrypt()...v2 ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "key":[B
    :cond_2
    :try_start_1
    const-string v6, "HtcWifiConfigEncryption"

    const-string v7, "Encrypt...v2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 83
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v6, "1234567890123456"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 84
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 86
    .local v1, "encrypted":[B
    invoke-direct {p0, v1}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->byte2String([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method

.method private getKey([B)[B
    .locals 6
    .param p1, "seed"    # [B

    .prologue
    .line 164
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 165
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    const-string v4, "Crypto"

    invoke-static {v3, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 166
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 167
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 168
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 171
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "HtcWifiConfigEncryption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKey() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 193
    const-class v11, Lcom/android/server/wifi/HtcWifiConfigEncryption;

    monitor-enter v11

    const/4 v1, 0x0

    .line 198
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v12, "/proc/calibration"

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    if-nez v2, :cond_1

    .line 255
    if-eqz v2, :cond_0

    .line 256
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 262
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    monitor-exit v11

    return-object v9

    .line 201
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "line":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_2

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 203
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 210
    :cond_2
    if-eqz v8, :cond_5

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 211
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 213
    .local v6, "index":I
    if-gez v6, :cond_4

    .line 215
    const/4 v9, 0x0

    .line 255
    .end local v6    # "index":I
    .local v9, "tmpMac":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_3

    .line 256
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :cond_3
    :goto_4
    const/4 v1, 0x0

    .line 261
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 217
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v9    # "tmpMac":Ljava/lang/String;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "index":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 218
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tmpMac":Ljava/lang/String;
    goto :goto_3

    .line 223
    .end local v6    # "index":I
    .end local v9    # "tmpMac":Ljava/lang/String;
    :cond_5
    const/16 v10, 0x20

    new-array v0, v10, [B

    .line 225
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/calibration"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 228
    .local v5, "in":Ljava/io/FileInputStream;
    if-nez v4, :cond_7

    .line 229
    const-string v10, "HtcWifiConfigEncryption"

    const-string v12, "TI Open /proc/calibration fail, return MAC = NULL"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 255
    if-eqz v2, :cond_6

    .line 256
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    :cond_6
    :goto_5
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 233
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    .restart local v5    # "in":Ljava/io/FileInputStream;
    if-nez v5, :cond_9

    .line 235
    const-string v10, "HtcWifiConfigEncryption"

    const-string v12, "TI new FileInputStream fail, return MAC = NULL"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 255
    if-eqz v2, :cond_8

    .line 256
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    :cond_8
    :goto_6
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 239
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_9
    const/4 v10, 0x0

    const/16 v12, 0xf

    :try_start_8
    invoke-virtual {v5, v0, v10, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 240
    .local v7, "length":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_b

    .line 241
    const-string v10, "HtcWifiConfigEncryption"

    const-string v12, "TI read file fail, return MAC = NULL"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 255
    if-eqz v2, :cond_a

    .line 256
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 260
    :cond_a
    :goto_7
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 245
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_b
    :try_start_a
    const-string v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0xb

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0xa

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x6

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x5

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x4

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x3

    aget-byte v14, v0, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v9

    .restart local v9    # "tmpMac":Ljava/lang/String;
    goto/16 :goto_3

    .line 251
    .end local v0    # "buffer":[B
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "tmpMac":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    :goto_8
    const/4 v9, 0x0

    .line 255
    .restart local v9    # "tmpMac":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 256
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 260
    :cond_c
    :goto_9
    const/4 v1, 0x0

    .line 261
    goto/16 :goto_1

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "tmpMac":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 255
    :goto_a
    if-eqz v1, :cond_d

    .line 256
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 260
    :cond_d
    :goto_b
    const/4 v1, 0x0

    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 193
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 257
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .restart local v0    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_5

    :catch_3
    move-exception v10

    goto :goto_6

    .restart local v7    # "length":I
    :catch_4
    move-exception v10

    goto :goto_7

    .end local v0    # "buffer":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .restart local v9    # "tmpMac":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_4

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_9

    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "tmpMac":Ljava/lang/String;
    :catch_7
    move-exception v12

    goto :goto_b

    .line 254
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_a

    .line 251
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_8
.end method

.method public static isSupportHotspotEncryption()Z
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Landroid/net/wifi/HtcWifiCustomizeReader;->isSupportHotspotEncryption()Z

    move-result v0

    return v0
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 155
    .local v2, "len":I
    new-array v0, v2, [B

    .line 156
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 157
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v13, 0x10

    .line 270
    move-object v8, p1

    .line 271
    .local v8, "original":Ljava/lang/String;
    const-string v11, "HTC-ENCRYPTION:"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 272
    const-string v11, "HtcWifiConfigEncryption"

    const-string v12, "HTC-ENCRYPTION Decrypt..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v11, Ljava/lang/String;

    const-string v12, "HTC-ENCRYPTION:"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v11, "ro.serialno"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "seed":Ljava/lang/String;
    new-array v6, v13, [B

    .line 277
    .local v6, "key":[B
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_1

    .line 278
    :cond_0
    const-string v11, "HtcWifiConfigEncryption"

    const-string v12, "decrypt() ERROR: seed is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v9, "123456789012"

    .line 281
    :cond_1
    if-nez p1, :cond_3

    .line 282
    const-string v11, "HtcWifiConfigEncryption"

    const-string v12, "decrypt() ERROR: enc is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v6    # "key":[B
    .end local v9    # "seed":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v10

    .line 287
    .restart local v6    # "key":[B
    .restart local v9    # "seed":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    :try_start_0
    invoke-static {p1, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 288
    .local v2, "encrypted":[B
    new-instance v11, Ljava/lang/String;

    const-string v12, "1234567890123456"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 290
    .local v5, "iv":[B
    const-string v11, "SHA-256"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 291
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 292
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 293
    .local v1, "digest_key":[B
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_1
    if-ge v4, v13, :cond_4

    .line 294
    aget-byte v11, v1, v4

    aput-byte v11, v6, v4

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    :cond_4
    const-string v11, "AES/CBC/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 303
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "AES"

    invoke-direct {v12, v6, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v11, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 305
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 307
    .local v10, "str_decrypted":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 310
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 311
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "digest_key":[B
    .end local v2    # "encrypted":[B
    .end local v4    # "idx":I
    .end local v5    # "iv":[B
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v10    # "str_decrypted":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 312
    .local v3, "ex":Ljava/lang/Exception;
    const-string v11, "HtcWifiConfigEncryption"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "decrypt() ERROR: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v8

    .line 314
    goto :goto_0

    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v6    # "key":[B
    .end local v9    # "seed":Ljava/lang/String;
    :cond_5
    move-object v10, p1

    .line 317
    goto/16 :goto_0
.end method

.method public encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->isSupportHotspotEncryption()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v8, p1

    .line 371
    :goto_0
    return-object v8

    .line 328
    :cond_0
    move-object/from16 v8, p1

    .line 329
    .local v8, "original":Ljava/lang/String;
    const-string v13, "HtcWifiConfigEncryption"

    const-string v14, "HTC-ENCRYPTION Encrypt..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v13, "ro.serialno"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, "seed":Ljava/lang/String;
    const/16 v13, 0x10

    new-array v6, v13, [B

    .line 333
    .local v6, "key":[B
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-ge v13, v14, :cond_2

    .line 334
    :cond_1
    const-string v13, "HtcWifiConfigEncryption"

    const-string v14, "encrypt() ERROR: seed is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v11, "123456789012"

    .line 337
    :cond_2
    if-nez p1, :cond_3

    .line 338
    const-string v13, "HtcWifiConfigEncryption"

    const-string v14, "encrypt() ERROR: enc is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v8, 0x0

    goto :goto_0

    .line 343
    :cond_3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    rem-int/lit8 v13, v13, 0x10

    rsub-int/lit8 v9, v13, 0x10

    .local v9, "padlen":I
    move v10, v9

    .line 344
    .end local v9    # "padlen":I
    .local v10, "padlen":I
    :goto_1
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "padlen":I
    .restart local v9    # "padlen":I
    if-lez v10, :cond_4

    .line 345
    const-string v13, "\u0001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v10, v9

    .end local v9    # "padlen":I
    .restart local v10    # "padlen":I
    goto :goto_1

    .line 348
    .end local v10    # "padlen":I
    .restart local v9    # "padlen":I
    :cond_4
    new-instance v13, Ljava/lang/String;

    const-string v14, "1234567890123456"

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 350
    .local v5, "iv":[B
    const-string v13, "SHA-256"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 351
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 352
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 353
    .local v2, "digest_key":[B
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_2
    const/16 v13, 0x10

    if-ge v4, v13, :cond_5

    .line 354
    aget-byte v13, v2, v4

    aput-byte v13, v6, v4

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 362
    :cond_5
    const-string v13, "AES/CBC/NoPadding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 363
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v13, 0x1

    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    const-string v15, "AES"

    invoke-direct {v14, v6, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v15, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v13, v14, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 367
    .local v12, "str_encrypted":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string v14, "HTC-ENCRYPTION:"

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 368
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "digest_key":[B
    .end local v4    # "idx":I
    .end local v5    # "iv":[B
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v9    # "padlen":I
    .end local v12    # "str_encrypted":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 369
    .local v3, "ex":Ljava/lang/Exception;
    const-string v13, "HtcWifiConfigEncryption"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encrypt() ERROR: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getDecryptedKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 57
    const-string v0, "HtcWifiConfigEncryption"

    const-string v1, "Decrypt Password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 39
    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->isSupportHotspotEncryption()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 44
    const-string v0, "1234567890"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 45
    const-string v0, "HtcWifiConfigEncryption"

    const-string v1, "Set defualt PASSWORD when get NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    const-string v0, "HtcWifiConfigEncryption"

    const-string v1, "Encrypt Password"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/HtcWifiConfigEncryption;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
