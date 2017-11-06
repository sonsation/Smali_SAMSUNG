.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;
.super Ljava/lang/Object;
.source "RadioMainFavoriteMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

.field final synthetic val$isFavorite:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->val$isFavorite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->val$isFavorite:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method
