.class public Lcom/htc/lockscreen/framework/wrapper/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static resolveActivityAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method
