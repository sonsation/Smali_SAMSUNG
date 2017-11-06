.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;
.super Ljava/lang/Object;
.source "RadioMainFavoriteMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 69
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->clickFavoriteBtn(Z)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->clickFavoriteBtn(Z)V

    goto :goto_0
.end method
