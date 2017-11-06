.class Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "ListScreenIdHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentScreenId:Ljava/lang/String;

.field private final mEditModeScreenId:Ljava/lang/String;

.field private mIsVisibleToUser:Z

.field private final mNormalScreenId:Ljava/lang/String;

.field private final mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p2, "normalScreenId"    # Ljava/lang/String;
    .param p3, "editModeScreenId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mNormalScreenId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mEditModeScreenId:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mNormalScreenId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mCurrentScreenId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mIsVisibleToUser:Z

    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->sendScreenId()V

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mIsVisibleToUser:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mCurrentScreenId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mEditModeScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->sendScreenId()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mNormalScreenId:Ljava/lang/String;

    return-object v0
.end method

.method private sendScreenId()V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendScreenId() | screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mCurrentScreenId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mCurrentScreenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mCurrentScreenId:Ljava/lang/String;

    return-object v0
.end method

.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 52
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 53
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 58
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 59
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mIsVisibleToUser:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->sendScreenId()V

    .line 46
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->mIsVisibleToUser:Z

    .line 47
    return-void
.end method
