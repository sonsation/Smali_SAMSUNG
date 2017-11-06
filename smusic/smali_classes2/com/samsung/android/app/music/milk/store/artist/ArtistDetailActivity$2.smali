.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 3
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 194
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$102(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;I)I

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/ArtistInfo;->getArtistInfo()Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    move-result-object v0

    .line 198
    .local v0, "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->isFavorite()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;Z)V

    .line 201
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;->access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;)V

    .line 202
    return-void
.end method
