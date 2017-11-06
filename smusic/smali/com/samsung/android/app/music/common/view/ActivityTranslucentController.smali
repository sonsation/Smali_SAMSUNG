.class public final Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
.super Ljava/lang/Object;
.source "ActivityTranslucentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Z

.field private final mFinishActivityAfterTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

.field private mIsActivityTranslucent:Z

.field private final mTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;-><init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    .line 90
    new-instance v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$2;-><init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mFinishActivityAfterTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mActivity:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;-><init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mIsActivityTranslucent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mCancel:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mCancel:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->convertFromTranslucent()V

    return-void
.end method

.method private convertFromTranslucent()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mIsActivityTranslucent:Z

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->convertFromTranslucent(Landroid/app/Activity;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public convertToTranslucent()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->convertToTranslucent(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;Landroid/app/ActivityOptions;)V

    .line 45
    :cond_0
    return-void
.end method

.method public finishActivityAfterConvertToTranslucent()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mFinishActivityAfterTranslucentConversionListener:Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->convertToTranslucent(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;Landroid/app/ActivityOptions;)V

    .line 75
    :cond_0
    return-void
.end method

.method public isActivityTranslucent()Z
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActivityTranslucent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mIsActivityTranslucent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->mIsActivityTranslucent:Z

    return v0
.end method
