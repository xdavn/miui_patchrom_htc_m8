.class final Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1275
    const/4 v1, 0x0

    .line 1276
    .local v1, "installedSvc":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1279
    .local v0, "gsmaSvc":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1280
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "gsmaSvc":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    .line 1284
    .restart local v0    # "gsmaSvc":Landroid/content/ComponentName;
    :goto_0
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    invoke-direct {v2, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V

    return-object v2

    .line 1282
    :cond_0
    sget-object v2, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "installedSvc":Landroid/content/pm/ResolveInfo;
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .restart local v1    # "installedSvc":Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1289
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    move-result-object v0

    return-object v0
.end method
