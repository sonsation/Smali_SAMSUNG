.class public Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
.super Ljava/lang/Object;
.source "CocktailBarManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field private mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private ensureParent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    if-nez v0, :cond_1

    .line 26
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)Z
    .locals 2
    .param p1, "stateChangedListener"    # Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->ensureParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V
    .locals 2
    .param p1, "stateChangedListener"    # Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->unregisterStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    .line 74
    :cond_0
    return-void
.end method
