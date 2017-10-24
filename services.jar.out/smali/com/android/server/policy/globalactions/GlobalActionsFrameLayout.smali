.class public Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayout.java"


# static fields
.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field private static final TAG_BG:Ljava/lang/String; = "globalactions_bg"


# instance fields
.field bg:Landroid/widget/LinearLayout;

.field bg_land:Landroid/widget/LinearLayout;

.field childcnt:I

.field childindex:[I

.field hsv:Landroid/widget/HorizontalScrollView;

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field mConfirmLandscape:Z

.field mConfirmPortrait:Z

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mShowNavigationBar:Z

.field sv:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 69
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090066

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 72
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 73
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 74
    const v2, 0x10203c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 75
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 76
    const v2, 0x10203ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 77
    const v2, 0x10203cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 79
    const v2, 0x10203cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 85
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090066

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 88
    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 89
    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 90
    const v2, 0x10203c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 91
    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 92
    const v2, 0x10203ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 93
    iput-object p3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    .line 94
    const v2, 0x10203cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 96
    const v2, 0x10203cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    iput v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childcnt:I

    .line 46
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->childindex:[I

    .line 47
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    .line 54
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    .line 108
    return-void
.end method


# virtual methods
.method public checkOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    const-string/jumbo v0, "ConfirmPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string/jumbo v0, "ConfirmLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    goto :goto_0

    .line 201
    :cond_2
    const-string/jumbo v0, "HideConfirmPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    goto :goto_0

    .line 203
    :cond_3
    const-string/jumbo v0, "HideConfirmLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iput-boolean v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    goto :goto_0
.end method

.method public hideAllView(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    move-object v2, v3

    .line 118
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 119
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 120
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 122
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 123
    const-wide/16 v6, 0xc8

    .line 121
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 124
    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 121
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 112
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideAllViewForLand(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v3    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    move-object v2, v3

    .line 160
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 161
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 162
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 164
    const/4 v5, 0x0

    .line 163
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 165
    const-wide/16 v6, 0xc8

    .line 163
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 166
    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$3;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 163
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 154
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x4

    const/4 v9, -0x1

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const/4 v8, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->getChildAt(I)Landroid/view/View;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 217
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 218
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 219
    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 221
    .local v4, "naviBarHeight":I
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 222
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 223
    const v6, 0x105021c

    .line 222
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    .local v1, "bottomViewSingleItemHeight":I
    int-to-double v6, v1

    mul-double/2addr v6, v10

    double-to-int v0, v6

    .line 225
    .local v0, "bottomViewHeight":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v3, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v8, v8, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 227
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 234
    .end local v0    # "bottomViewHeight":I
    .end local v1    # "bottomViewSingleItemHeight":I
    .end local v3    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "naviBarHeight":I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    if-eqz v5, :cond_4

    .line 209
    :cond_2
    :goto_2
    return-void

    .line 230
    .restart local v4    # "naviBarHeight":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8, v8, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 235
    .end local v4    # "naviBarHeight":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 237
    :cond_5
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 238
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 239
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 240
    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    .line 241
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 242
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 243
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 244
    const v6, 0x105021c

    .line 243
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 245
    .restart local v1    # "bottomViewSingleItemHeight":I
    int-to-double v6, v1

    mul-double/2addr v6, v10

    double-to-int v0, v6

    .line 246
    .restart local v0    # "bottomViewHeight":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v3    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .end local v0    # "bottomViewHeight":I
    .end local v1    # "bottomViewSingleItemHeight":I
    .end local v3    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmPortrait:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mConfirmLandscape:Z

    if-nez v5, :cond_2

    .line 253
    iget-object v5, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showAllView(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .end local v2    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    move-object v1, v2

    .line 141
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 142
    const/high16 v4, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 143
    const-wide/16 v4, 0xc8

    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 144
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$2;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 141
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 135
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showAllViewForLand(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->bg_land:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    move-object v1, v2

    .line 183
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 184
    const/high16 v4, 0x3f800000    # 1.0f

    .line 183
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 185
    const-wide/16 v4, 0xc8

    .line 183
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$4;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$4;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    .line 183
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 177
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
