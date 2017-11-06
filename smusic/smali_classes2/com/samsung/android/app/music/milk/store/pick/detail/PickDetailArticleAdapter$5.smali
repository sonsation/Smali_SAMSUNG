.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;
.super Ljava/lang/Object;
.source "PickDetailArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    .local v0, "tagPosition":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->access$600(Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    .line 265
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 264
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 266
    return-void
.end method
