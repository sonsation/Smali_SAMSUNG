.class public final Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
.super Ljava/lang/Object;
.source "ViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$Error;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$ViewCoverType;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$ViewCoverMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sIsSupportCoverSView:Ljava/lang/Boolean;


# instance fields
.field private final mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private final mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 106
    .local v1, "scover":Lcom/samsung/android/sdk/cover/Scover;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 112
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 122
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 124
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewCoverManager initialize failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method public static isSupportCoverSView(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_COVER_SVIEW:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    .line 174
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCoverSView() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCoverHeight()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCoverType()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x2

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getCoverWidth()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    goto :goto_0
.end method

.method public isCoverOpened()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 128
    return-void
.end method

.method public setCoverMode(Landroid/view/Window;I)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 132
    return-void
.end method
