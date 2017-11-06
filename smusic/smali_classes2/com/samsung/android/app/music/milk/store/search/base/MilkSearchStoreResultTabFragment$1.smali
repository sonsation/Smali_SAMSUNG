.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreResultTabFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 6
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f110238

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 110
    .local v2, "normalColor":I
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 112
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 120
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->setPrimaryColor(ILandroid/content/res/ColorStateList;)V

    .line 122
    .end local v0    # "colorList":Landroid/content/res/ColorStateList;
    .end local v2    # "normalColor":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 114
    .restart local v2    # "normalColor":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    const v4, 0x7f110234

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 118
    .local v1, "defaultColor":I
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .restart local v0    # "colorList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method
