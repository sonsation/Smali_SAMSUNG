.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMusicModeTipHelper"
.end annotation


# static fields
.field private static final MAX_SHOW_TIP_COUNT:I = 0x3


# instance fields
.field private mAnchor:Landroid/view/View;

.field private final mImageGetter:Landroid/text/Html$ImageGetter;

.field private mOffY:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mShowMyMusicModeTip:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    new-instance v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$1;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mImageGetter:Landroid/text/Html$ImageGetter;

    .line 1853
    invoke-static {p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$1400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "my_music_mode_shown_tip_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1854
    .local v0, "shownTipCount":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1855
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1856
    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->showTip()V

    .line 1860
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;Landroid/os/Bundle;Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
    .param p2, "x1"    # Landroid/os/Bundle;
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$1;

    .prologue
    .line 1840
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1914
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mShowMyMusicModeTip:Z

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->showTip()V

    .line 1917
    :cond_0
    return-void
.end method

.method showTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1879
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1880
    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mShowMyMusicModeTip:Z

    .line 1910
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_2

    .line 1885
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    const v3, 0x7f12025d

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mAnchor:Landroid/view/View;

    .line 1886
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1887
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401cb

    .line 1888
    invoke-virtual {v3, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1887
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1889
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1890
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1891
    .local v0, "contentView":Landroid/view/View;
    const v2, 0x7f120137

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$2;-><init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1897
    const v2, 0x7f120078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .line 1898
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0426

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mImageGetter:Landroid/text/Html$ImageGetter;

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/text/HtmlCompat;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    .line 1897
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1900
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1901
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mOffY:I

    .line 1904
    .end local v0    # "contentView":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$1400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "my_music_mode_shown_tip_count"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1905
    .local v1, "shownTipCount":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 1906
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mAnchor:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mOffY:I

    const v5, 0x800005

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1907
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$1400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "my_music_mode_shown_tip_count"

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1908
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->mShowMyMusicModeTip:Z

    goto/16 :goto_0
.end method
