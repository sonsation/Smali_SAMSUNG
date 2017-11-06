.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;
.super Ljava/lang/Object;
.source "ServiceEdgeAnimationController.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;)V
    .locals 3
    .param p1, "cocktailBarStateInfo"    # Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    iget v0, p1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->windowType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$402(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edge panel open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$400(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 190
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
