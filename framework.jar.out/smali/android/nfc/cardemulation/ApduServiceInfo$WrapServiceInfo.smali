.class public Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapServiceInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final gsmaSvc:Landroid/content/ComponentName;

.field public final installedSvc:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1270
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "gsmaSvc"    # Landroid/content/ComponentName;
    .param p2, "installedSvc"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both gsmaSvc and installedSvc are null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both gsmaSvc and installedSvc are not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_1
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    .line 1182
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->gsmaSvc:Landroid/content/ComponentName;

    .line 1183
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1242
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 1246
    :goto_0
    return v1

    .line 1243
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1245
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;

    .line 1246
    .local v0, "that":Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 1186
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->gsmaSvc:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGsmaService()Z
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->gsmaSvc:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1211
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1215
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1221
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 1216
    :catch_0
    move-exception v1

    .line 1217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ApduServiceInfo [GSMA]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadIcon: could not get ApplicationInfo. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v2, 0x0

    goto :goto_0

    .line 1221
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1200
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1206
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ApduServiceInfo [GSMA]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadLabel: could not get ApplicationInfo. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v2, 0x0

    goto :goto_0

    .line 1206
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public resolvePackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1226
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1226
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->isGsmaService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->gsmaSvc:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    :goto_1
    return-void

    .line 1262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1266
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$WrapServiceInfo;->installedSvc:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method
