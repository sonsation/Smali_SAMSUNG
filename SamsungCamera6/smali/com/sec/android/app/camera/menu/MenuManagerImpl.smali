.class public Lcom/sec/android/app/camera/menu/MenuManagerImpl;
.super Ljava/lang/Object;
.source "MenuManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuManager;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuManager"

.field private static final mMenuOrderMap:Landroid/util/SparseIntArray;

.field private static final mMenusLock:Ljava/lang/Object;

.field private static final mViewStackLock:Ljava/lang/Object;


# instance fields
.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

.field private mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

.field private mShootingModeControllerGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mShootingModeViewGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

.field private mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuResourceDepot;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    iput-object p5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private clearAllMenus()V
    .locals 6

    const-string v4, "MenuManager"

    const-string v5, "clearAllMenus"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    :cond_1
    const-string v4, "MenuManager"

    const-string v5, "clearing..."

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_2
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    monitor-exit v5

    goto :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method private clearInactiveShootingModeViews()V
    .locals 8

    const-string v5, "MenuManager"

    const-string v6, "clearInactiveShootingModeViews"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "MenuManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearing shooting mode views - id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearInvisibleViews()V
    .locals 7

    const-string v4, "MenuManager"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    return-void
.end method

.method private clearShootingModeViewGroup()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method private closeVisibleViews()V
    .locals 6

    const-string v4, "MenuManager"

    const-string v5, "closeVisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_1
    return-void
.end method

.method private isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0x3d -> :sswitch_0
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x7d -> :sswitch_0
        0x7f -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x85 -> :sswitch_0
        0x96 -> :sswitch_0
        0xbe0 -> :sswitch_0
        0xbe1 -> :sswitch_0
    .end sparse-switch
.end method

.method private removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_0
.end method


# virtual methods
.method public collapseMenu()V
    .locals 6

    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collapseMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public createMenu(I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v19, 0x0

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    monitor-exit v4

    move-object/from16 v8, v19

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :sswitch_0
    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/BaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/camera/menu/BaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    :goto_1
    if-eqz v2, :cond_0

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :sswitch_1
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f4

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    goto :goto_1

    :sswitch_2
    new-instance v2, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f6

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    goto/16 :goto_1

    :sswitch_3
    new-instance v2, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f5

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/SilverBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x64

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x7f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x7f

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x7d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    move-object/from16 v8, v19

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x77

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x77

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x80

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x75

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x75

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x5a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x5a

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_e
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x66

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x66

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_f
    new-instance v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x3d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;)V

    move-object/from16 v8, v19

    goto/16 :goto_1

    :sswitch_10
    new-instance v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object v9, v2

    move-object/from16 v12, p0

    move/from16 v13, p1

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    move-object/from16 v8, v19

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x71

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x71

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x71

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x96

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x96

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x8 -> :sswitch_6
        0x12 -> :sswitch_a
        0x3d -> :sswitch_f
        0x5a -> :sswitch_d
        0x64 -> :sswitch_5
        0x66 -> :sswitch_e
        0x71 -> :sswitch_17
        0x75 -> :sswitch_c
        0x77 -> :sswitch_9
        0x7d -> :sswitch_8
        0x7f -> :sswitch_7
        0x80 -> :sswitch_b
        0x81 -> :sswitch_15
        0x82 -> :sswitch_16
        0x83 -> :sswitch_10
        0x84 -> :sswitch_11
        0x85 -> :sswitch_12
        0x96 -> :sswitch_19
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0xbe0 -> :sswitch_13
        0xbe1 -> :sswitch_14
        0x232f -> :sswitch_18
    .end sparse-switch
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    sget-object v6, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(Z:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",P:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public exists(I)Z
    .locals 3

    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    return-object v0
.end method

.method public getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->createMenu(I)V

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_0

    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    throw v1

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_0
    return-object v2
.end method

.method protected final getOverlayRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected final getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    return-object v0
.end method

.method protected final getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getZorderOnTop()I
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZorderOnTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideMenu(I)V
    .locals 3

    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isActive(I)Z
    .locals 3

    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isBaseMenuInitialized()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_0

    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - BaseMenu is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - Current shooting mode layout is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewTouchEnabled()Z
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreviewTouchEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityTouchEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearAllMenus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearShootingModeViewGroup()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->onDestroy()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onDestroy()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0x2c0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLayoutChanged(III)V
    .locals 5

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChanged : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onLowMemory(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-array v4, v3, [Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onPause()V

    return-void
.end method

.method public onReset()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->closeVisibleViews()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 5

    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0x2c0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideView(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onStop()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected popMenu()V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processBack()V
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    :cond_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method protected pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 6

    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pushMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method public removeMenu(I)V
    .locals 3

    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnHideListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnHideListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnShowListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnShowListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 10

    const/4 v2, 0x0

    const-string v1, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShootingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_1

    const-string v1, "MenuManager"

    const-string v2, "Cannot set shooting mode. BaseMenu is not created. return."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v7, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v8, v1

    move v5, v2

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object v6, v0

    move-object v7, v3

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public setShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
