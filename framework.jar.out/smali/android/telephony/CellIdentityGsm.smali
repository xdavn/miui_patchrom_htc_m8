.class public final Landroid/telephony/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityGsm"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 51
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 63
    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 64
    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 65
    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityGsm$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityGsm$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityGsm;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityGsm;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 70
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 71
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 72
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 73
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "CellIdentityGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    instance-of v3, p1, Landroid/telephony/CellIdentityGsm;

    if-nez v3, :cond_2

    move v1, v2

    .line 129
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 132
    check-cast v0, Landroid/telephony/CellIdentityGsm;

    .line 133
    .local v0, "o":Landroid/telephony/CellIdentityGsm;
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mLac:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const v0, 0x7fffffff

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityGsm:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mMcc=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, " mMnc=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, " mLac=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, " mCid=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
