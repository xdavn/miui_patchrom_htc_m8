.class public Lcom/android/server/audio/htcutil/HtcMethod;
.super Ljava/lang/Object;
.source "HtcMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcMethod"


# instance fields
.field method:Ljava/lang/reflect/Method;

.field methodName:Ljava/lang/String;

.field params:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/audio/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/android/server/audio/htcutil/HtcMethod;->params:[Ljava/lang/Class;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    .line 21
    return-void
.end method

.method public static initMethods([Lcom/android/server/audio/htcutil/HtcMethod;Ljava/lang/Class;)V
    .locals 8
    .param p0, "list"    # [Lcom/android/server/audio/htcutil/HtcMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/server/audio/htcutil/HtcMethod;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/android/server/audio/htcutil/HtcMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 36
    .local v4, "m":Lcom/android/server/audio/htcutil/HtcMethod;
    :try_start_0
    iget-object v5, v4, Lcom/android/server/audio/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/audio/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 34
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    iget-object v5, v4, Lcom/android/server/audio/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/audio/htcutil/HtcMethod;->params:[Ljava/lang/Class;

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/audio/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    .line 39
    const-string v5, "HtcMethod"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Found method : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/audio/htcutil/HtcMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "m":Lcom/android/server/audio/htcutil/HtcMethod;
    :cond_2
    return-void
.end method

.method public static varargs invokeHtcMethod(Ljava/lang/Object;Lcom/android/server/audio/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "m"    # Lcom/android/server/audio/htcutil/HtcMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/audio/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    array-length v1, p2

    if-nez v1, :cond_3

    .line 97
    :cond_2
    iget-object v1, p1, Lcom/android/server/audio/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_3
    iget-object v1, p1, Lcom/android/server/audio/htcutil/HtcMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
