.class public Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;
.super Ljava/lang/Object;
.source "SVirtualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;
    }
.end annotation


# static fields
.field private static mVirtualScreenAvailable:Z

.field private static mVirtualScreenAvailableChecked:Z


# instance fields
.field private mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    .line 37
    sput-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    .line 49
    return-void
.end method

.method private isVirtualScreenAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    if-eqz v1, :cond_0

    .line 192
    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    .line 199
    :goto_0
    return v1

    .line 194
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    .line 195
    .local v0, "virtualScreen":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->initialized()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    .line 198
    :cond_1
    sput-boolean v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailableChecked:Z

    .line 199
    sget-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mVirtualScreenAvailable:Z

    goto :goto_0

    .line 196
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindVirtualScreen()Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->bindVirtualScreen()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayIdByPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->getDisplayIdByPackage(Ljava/lang/String;)I

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->isMoving()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffset(II)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIZ)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->setOffset(IIZ)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "params"    # Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unBindVirtualScreen()Z
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->unBindVirtualScreen()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "params"    # Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVirtualScreen(Landroid/graphics/Rect;I)Z
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isVirtualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->mSVirtualScreenManagerReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->updateVirtualScreen(Landroid/graphics/Rect;I)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
