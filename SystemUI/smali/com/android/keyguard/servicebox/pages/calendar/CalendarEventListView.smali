.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
.super Landroid/widget/LinearLayout;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;,
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

.field private mAlreadyUpdated:Z

.field private mCalenderInfoUpdateCompleteListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

.field private mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLock:Ljava/lang/Object;

.field private mMaxEventCnt:I

.field private mPageType:I

.field private mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    .line 48
    iput v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    .line 52
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z

    .line 53
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    .line 77
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    sget-object v2, Lcom/android/keyguard/R$styleable;->ServiceBoxEventList:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "arrEventList":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 81
    sget v2, Lcom/android/keyguard/R$styleable;->ServiceBoxEventList_maxEventCnt:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_0
    sget-object v2, Lcom/android/keyguard/R$styleable;->ServiceBoxPage:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    .local v1, "arrPage":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 87
    sget v2, Lcom/android/keyguard/R$styleable;->ServiceBoxPage_pageType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_1
    return-void
.end method

.method private closeWindow()V
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    .line 99
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mEventChangedListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    .line 105
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    .line 93
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->closeWindow()V

    .line 177
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "visibility"    # I

    .prologue
    .line 181
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    .line 205
    return-void
.end method

.method public updateCalendarInfo()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getCachedEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V

    .line 110
    return-void
.end method

.method public updateCalendarInfo(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 115
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 116
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string/jumbo v5, "CalendarEventListView"

    const-string/jumbo v6, "There\'s no event"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v5, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-direct {v5, p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->removeAllViews()V

    .line 124
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 125
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAdapter:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    invoke-virtual {v5, v1, v7, v7}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "itemView":Landroid/view/View;
    iget v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    if-eq v5, v9, :cond_3

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mMaxEventCnt:I

    if-lt v1, v5, :cond_3

    .line 127
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_time:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "timeView":Landroid/widget/TextView;
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    .local v4, "titleView":Landroid/widget/TextView;
    sget v5, Lcom/android/keyguard/R$id;->servicebox_today_event_dot:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "dotView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 133
    :cond_1
    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 136
    :cond_2
    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 140
    .end local v0    # "dotView":Landroid/view/View;
    .end local v3    # "timeView":Landroid/widget/TextView;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_3
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->addView(Landroid/view/View;II)V

    .line 142
    iget v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mPageType:I

    if-ne v5, v9, :cond_4

    .line 143
    new-instance v5, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "idx":I
    .end local v2    # "itemView":Landroid/view/View;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 161
    .restart local v1    # "idx":I
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 162
    :try_start_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    if-eqz v5, :cond_6

    .line 163
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;

    invoke-interface {v5}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$CalenderInfoUpdateCompleteListener;->onCompleted()V

    .line 165
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->mAlreadyUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 114
    return-void

    .line 161
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method
