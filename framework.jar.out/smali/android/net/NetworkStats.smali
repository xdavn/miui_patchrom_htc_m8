.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 800
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 168
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 169
    if-ltz p3, :cond_0

    .line 170
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 171
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 172
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 173
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 174
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 175
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 176
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 177
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 178
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 179
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 193
    :goto_0
    return-void

    .line 182
    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 183
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 184
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 185
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 186
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 187
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 188
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 189
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 190
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 191
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 208
    return-void
.end method

.method private addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "tunIface"    # Ljava/lang/String;
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p4, "pool"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const-wide/16 v8, 0x0

    .line 903
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 904
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 905
    .local v2, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iput-object p2, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v3, :cond_6

    .line 907
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 909
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 913
    :goto_1
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 914
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 918
    :goto_2
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 919
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 923
    :goto_3
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 924
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 928
    :goto_4
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_5

    .line 929
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 934
    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 935
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 936
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 937
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 938
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 939
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 941
    const/16 v3, 0x3e9

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 942
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 906
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 911
    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    goto :goto_1

    .line 916
    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    goto :goto_2

    .line 921
    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_3

    .line 926
    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    goto :goto_4

    .line 932
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 946
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 5
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 951
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 952
    const/16 v2, 0x3ea

    iput v2, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 953
    iput v3, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 954
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 955
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 959
    invoke-virtual {p0, p2, p1, v3, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 960
    .local v0, "idxVpnBackground":I
    if-eq v0, v4, :cond_0

    .line 961
    invoke-static {v0, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 964
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 965
    .local v1, "idxVpnForeground":I
    if-eq v1, v4, :cond_1

    .line 966
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 968
    :cond_1
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 11
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 501
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 503
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 504
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 505
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 506
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 507
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 508
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 509
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 510
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 511
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7

    .line 514
    if-eq p3, v10, :cond_0

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4

    :cond_0
    move v3, v5

    .line 515
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v2, v5

    .line 517
    .local v2, "matchesIface":Z
    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 519
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_6

    if-nez p4, :cond_6

    .line 513
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_4
    move v3, v4

    .line 514
    goto :goto_2

    .restart local v3    # "matchesUid":Z
    :cond_5
    move v2, v4

    .line 515
    goto :goto_3

    .line 521
    .restart local v2    # "matchesIface":Z
    :cond_6
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 522
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 523
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 524
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 525
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_4

    .line 528
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_7
    return-object v0
.end method

.method public static setMatches(II)Z
    .locals 2
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 774
    if-ne p0, p1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 754
    sparse-switch p0, :sswitch_data_0

    .line 766
    const-string/jumbo v0, "unk"

    :goto_0
    return-object v0

    .line 756
    :sswitch_0
    const-string v0, "all"

    goto :goto_0

    .line 758
    :sswitch_1
    const-string v0, "def"

    goto :goto_0

    .line 760
    :sswitch_2
    const-string v0, "fg"

    goto :goto_0

    .line 762
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    goto :goto_0

    .line 764
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    goto :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 734
    sparse-switch p0, :sswitch_data_0

    .line 746
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 736
    :sswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 738
    :sswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 740
    :sswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 742
    :sswitch_3
    const-string v0, "DBG_VPN_IN"

    goto :goto_0

    .line 744
    :sswitch_4
    const-string v0, "DBG_VPN_OUT"

    goto :goto_0

    .line 734
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 15
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 578
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 579
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 580
    if-eqz p2, :cond_0

    .line 581
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 583
    :cond_0
    const-wide/16 v12, 0x0

    .line 587
    :cond_1
    new-instance v11, Landroid/net/NetworkStats$Entry;

    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 589
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_3

    .line 590
    move-object/from16 v14, p4

    .line 591
    .local v14, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    iput v2, v14, Landroid/net/NetworkStats;->size:I

    .line 592
    iput-wide v12, v14, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 596
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v7, v2, :cond_7

    .line 597
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 598
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    .line 599
    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    .line 600
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->tag:I

    .line 603
    iget-object v3, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v11, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v11, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v11, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 604
    .local v9, "j":I
    const/4 v2, -0x1

    if-ne v9, v2, :cond_4

    .line 606
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 607
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 608
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 609
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 610
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 632
    :cond_2
    :goto_2
    invoke-virtual {v14, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 596
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 594
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "result":Landroid/net/NetworkStats;
    :cond_3
    new-instance v14, Landroid/net/NetworkStats;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v14, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v14    # "result":Landroid/net/NetworkStats;
    goto :goto_0

    .line 613
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 614
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 615
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 616
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 617
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 619
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 621
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v5, p2

    move-object v6, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 622
    invoke-interface/range {v5 .. v10}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 624
    :cond_6
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 625
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 626
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 627
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 628
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_2

    .line 635
    .end local v9    # "j":I
    :cond_7
    return-object v14
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 868
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 869
    .local v1, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_5

    .line 870
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 871
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 872
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    :cond_0
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_2

    .line 875
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 884
    :cond_3
    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 886
    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 869
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 892
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 893
    .local v0, "pool":Landroid/net/NetworkStats$Entry;
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 894
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 895
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 896
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 897
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 898
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 971
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 972
    .local v0, "rxBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v0

    aput-wide v10, v8, p0

    .line 973
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v8, v0

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 975
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 976
    .local v2, "rxPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v2

    aput-wide v10, v8, p0

    .line 977
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 979
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 980
    .local v4, "txBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v4

    aput-wide v10, v8, p0

    .line 981
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v4

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 983
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 984
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v6

    aput-wide v10, v8, p0

    .line 985
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 986
    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 240
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    .line 259
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 260
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 261
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 262
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 263
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 264
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 265
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 266
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 267
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 268
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 269
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 272
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 273
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 274
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 275
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 276
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 277
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 278
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 279
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 280
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 281
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-object p0

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 247
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 228
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 229
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 230
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 231
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 367
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 347
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 348
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 358
    :goto_0
    return-object p0

    .line 352
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 353
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 354
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 355
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 356
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 337
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 713
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    const-string v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 716
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 720
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 723
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 724
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 725
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 726
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 728
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 377
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 376
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    .prologue
    .line 391
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 392
    div-int/lit8 v0, v2, 0x2

    .line 396
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 397
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 402
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 399
    .restart local v0    # "halfOffset":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 391
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 469
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    .prologue
    .line 461
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 462
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 489
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    .prologue
    .line 535
    const-wide/16 v2, 0x0

    .line 536
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 537
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 536
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 539
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 430
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 431
    .local v3, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 432
    .local v2, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_0

    .line 433
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 443
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 444
    .local v7, "uids":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 445
    .local v6, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v6    # "uid":I
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 449
    .local v5, "size":I
    new-array v4, v5, [I

    .line 450
    .local v4, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 451
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    :cond_1
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 290
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 291
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 293
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 294
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 295
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 296
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 297
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 298
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 299
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 300
    return-object v0

    .line 290
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 643
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 645
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 646
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 647
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 648
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 649
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 653
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 651
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 656
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 657
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 658
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 659
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 660
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 663
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 671
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 673
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 674
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 675
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 676
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 680
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 678
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 683
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 684
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 685
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 686
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 687
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 688
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 691
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 835
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 836
    .local v4, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .local v5, "underlyingIfaceTotal":Landroid/net/NetworkStats$Entry;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 838
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 843
    invoke-static {v4, v5}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 844
    .local v7, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v7}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 855
    :goto_0
    return v0

    .line 847
    :cond_0
    invoke-direct {p0, p2, p3, v4, v7}, Landroid/net/NetworkStats;->addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 848
    .local v6, "moved":Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, p1, p3, v6}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 850
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v8

    .line 855
    goto :goto_0
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 308
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 309
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_1

    .line 417
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 418
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 419
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 416
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    goto :goto_1

    .line 424
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 790
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 791
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 792
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 699
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 701
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 702
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 703
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 704
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 705
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 702
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 217
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 218
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 219
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 220
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 221
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 222
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 223
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 224
    return-void
.end method
