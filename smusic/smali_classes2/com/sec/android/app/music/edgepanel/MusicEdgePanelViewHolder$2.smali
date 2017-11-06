.class Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;
.super Ljava/lang/Object;
.source "MusicEdgePanelViewHolder.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;)V
    .locals 4
    .param p1, "cocktailBarStateInfo"    # Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;

    .prologue
    const/4 v3, 0x1

    .line 253
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCocktailBarStateChangedListener:onCocktailBarStateChanged() visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$200(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    iget v1, p1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-static {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$202(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;I)I

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$200(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$2;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->updateEdgePanel(Z)V

    .line 262
    :cond_0
    return-void
.end method
