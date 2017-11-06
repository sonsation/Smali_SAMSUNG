.class public Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "CancelDoneActionMenu.java"


# instance fields
.field private mCancelButtonShowButtonBackground:Landroid/view/View;

.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDoneButtonShowButtonBackground:Landroid/view/View;

.field private final mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private final mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu$1;-><init>(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mContentView:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->ensureShowButtonBackgroundViews(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mDoneButtonShowButtonBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mCancelButtonShowButtonBackground:Landroid/view/View;

    return-object v0
.end method

.method private ensureShowButtonBackgroundViews(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mDoneButtonShowButtonBackground:Landroid/view/View;

    if-nez v1, :cond_0

    .line 66
    const v1, 0x7f120112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 67
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mDoneButtonShowButtonBackground:Landroid/view/View;

    .line 69
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mCancelButtonShowButtonBackground:Landroid/view/View;

    if-nez v1, :cond_1

    .line 70
    const v1, 0x7f120110

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 71
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mCancelButtonShowButtonBackground:Landroid/view/View;

    .line 73
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mShowButtonBackgroundSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 56
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 61
    return-void
.end method
