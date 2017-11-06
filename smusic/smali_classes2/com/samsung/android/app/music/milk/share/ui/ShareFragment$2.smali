.class Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    const v2, 0x7f12002c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 352
    .local v1, "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$2;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->access$100(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V

    .line 353
    return-void

    .line 349
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find ResolveInfo for package name and package name-label pair"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
