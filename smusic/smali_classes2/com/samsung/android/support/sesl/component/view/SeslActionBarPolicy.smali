.class public Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
.super Ljava/lang/Object;
.source "SeslActionBarPolicy.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 10

    .prologue
    const/16 v9, 0x3c0

    const/16 v8, 0x2d0

    const/16 v7, 0x280

    const/16 v6, 0x258

    const/16 v5, 0x1e0

    .line 51
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 53
    .local v3, "widthDp":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 54
    .local v1, "heightDp":I
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 56
    .local v2, "smallest":I
    if-gt v2, v6, :cond_1

    if-gt v3, v6, :cond_1

    if-le v3, v9, :cond_0

    if-gt v1, v8, :cond_1

    :cond_0
    if-le v3, v8, :cond_2

    if-le v1, v9, :cond_2

    .line 59
    :cond_1
    const/4 v4, 0x5

    .line 68
    :goto_0
    return v4

    .line 60
    :cond_2
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_4

    if-le v3, v7, :cond_3

    if-gt v1, v5, :cond_4

    :cond_3
    if-le v3, v5, :cond_5

    if-le v1, v7, :cond_5

    .line 63
    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    .line 64
    :cond_5
    const/16 v4, 0x168

    if-lt v3, v4, :cond_6

    .line 66
    const/4 v4, 0x3

    goto :goto_0

    .line 68
    :cond_6
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
