.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$1;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$1;->this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1865
    const/4 v0, 0x0

    .line 1866
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const-string v3, "icon"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1867
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper$1;->this$1:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1868
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0201bd

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 1869
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1870
    const v3, 0x7f0d06f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1871
    .local v1, "iconSize":I
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1872
    const v3, 0x7f11002a

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1874
    .end local v1    # "iconSize":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    return-object v0
.end method
