.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;
.super Ljava/lang/Object;
.source "MusicCategoryGenreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$OptionMenu;->onOptionMenuSelected(I)Z

    .line 151
    :cond_0
    return-void
.end method
