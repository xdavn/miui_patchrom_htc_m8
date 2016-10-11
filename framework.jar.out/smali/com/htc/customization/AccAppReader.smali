.class public Lcom/htc/customization/AccAppReader;
.super Lcom/htc/customization/SystemReader;
.source "AccAppReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccAppReader"


# instance fields
.field private mDefaultReader:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/customization/SystemReader;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 95
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 99
    .local v2, "tempBoolean":Z
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq p2, v2, :cond_0

    move v3, v2

    .line 108
    .end local v0    # "i":I
    :goto_1
    return v3

    .line 100
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 105
    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 113
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mByteMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "ret":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 116
    .local v2, "tempByte":Ljava/lang/Byte;
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readByte(Ljava/lang/String;B)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-eq p2, v3, :cond_0

    .line 119
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 125
    .end local v0    # "i":I
    :goto_1
    return v3

    .line 117
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_1
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [I

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "ret":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v2, v3, [I

    aput v4, v2, v4

    .line 133
    .local v2, "tempIntArray":[I
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v2

    if-eq p2, v2, :cond_0

    move-object v3, v2

    .line 143
    .end local v0    # "i":I
    .end local v1    # "ret":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 134
    .restart local v0    # "i":I
    .restart local v1    # "ret":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 139
    goto :goto_1

    .line 142
    .end local v0    # "i":I
    :cond_2
    check-cast v1, [Ljava/lang/Integer;

    .end local v1    # "ret":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/htc/customization/AccAppReader;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v1

    .line 143
    .local v1, "ret":[I
    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    goto :goto_1
.end method

.method public readInteger(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 40
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, -0x1

    .line 43
    .local v2, "tempInt":I
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    if-eq p2, v2, :cond_0

    move v3, v2

    .line 56
    .end local v0    # "i":I
    :goto_1
    return v3

    .line 44
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 53
    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1
.end method

.method public readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 81
    .local v2, "tempBoolean":Z
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 83
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v4, v2, :cond_0

    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 90
    .end local v0    # "i":I
    :goto_1
    return-object v3

    .line 82
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 90
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mStringMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 64
    .local v2, "tempString":Ljava/lang/String;
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq p2, v2, :cond_0

    move-object v3, v2

    .line 73
    .end local v0    # "i":I
    :goto_1
    return-object v3

    .line 65
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 70
    goto :goto_1

    .line 73
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 148
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "ret":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 151
    .local v2, "tempStringArray":[Ljava/lang/String;
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v3, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eq p2, v2, :cond_0

    move-object v3, v2

    .line 160
    .end local v0    # "i":I
    :goto_1
    return-object v3

    .line 152
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 157
    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    goto :goto_1
.end method

.method public setDefaultReader(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "defaultReader":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/htc/customization/HtcCustomizationReader;>;"
    iput-object p1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Ljava/util/Vector;

    .line 36
    return-void
.end method
