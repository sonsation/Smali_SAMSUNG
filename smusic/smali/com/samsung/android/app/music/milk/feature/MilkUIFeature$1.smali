.class Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;
.super Ljava/lang/Object;
.source "MilkUIFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->notifyFeatureListener(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;->this$0:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;->this$0:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->access$000(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 176
    .local v1, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    .line 178
    .local v0, "listener":Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
    const-string v3, "MilkUIFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyFeatureListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;->onFeatureChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 182
    .end local v0    # "listener":Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;
    :cond_0
    return-void
.end method
