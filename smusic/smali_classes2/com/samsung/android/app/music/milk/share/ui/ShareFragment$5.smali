.class Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$5;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 374
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$5;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 379
    .local v0, "currInfo":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$5;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->access$100(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)V

    .line 382
    :cond_0
    return-void
.end method
