.class public Lcom/samsung/android/app/music/cover/CoverQueueActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "CoverQueueActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/cover/CoverQueueActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 24
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v2, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .line 26
    .local v0, "coverQueueFragment":Lcom/samsung/android/app/music/cover/CoverQueueFragment;
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .end local v0    # "coverQueueFragment":Lcom/samsung/android/app/music/cover/CoverQueueFragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;-><init>()V

    .line 28
    .restart local v0    # "coverQueueFragment":Lcom/samsung/android/app/music/cover/CoverQueueFragment;
    sget-object v2, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method private initWindow(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->initWindow(Landroid/view/Window;)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->initFragment()V

    .line 20
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onWindowFocusChanged(Z)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueActivity;->finish()V

    .line 45
    :cond_0
    return-void
.end method
