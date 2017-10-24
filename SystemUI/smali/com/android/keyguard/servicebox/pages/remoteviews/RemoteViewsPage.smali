.class public Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "RemoteViewsPage.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mExpandBottomPadding:I

.field private mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mRemoteViewHolder:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_expand_page_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    .line 53
    return-void
.end method


# virtual methods
.method protected getContentsView(I)Landroid/view/View;
    .locals 5
    .param p1, "pageType"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "childPage":Landroid/view/View;
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v1, v1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "childPage":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v0

    .line 92
    .local v0, "childPage":Landroid/view/View;
    :cond_1
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v1, v1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "childPage":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v1, v1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    if-ne v1, v2, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 97
    iget v4, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    .line 96
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 100
    .local v0, "childPage":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v1, v1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "childPage":Landroid/view/View;
    goto :goto_0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 106
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    .line 67
    sget v0, Lcom/android/keyguard/R$id;->servicebox_remoteviews_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    .line 64
    return-void
.end method

.method public refreshViews()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public setItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .line 59
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public updateRemoteViews()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    return-void
.end method
