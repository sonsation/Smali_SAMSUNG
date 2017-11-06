.class Lcom/samsung/android/app/music/milk/store/StoreFragment$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/StoreFragment;->initCategoryViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/StoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/StoreFragment;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveMainTab(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/StoreFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 271
    new-instance v1, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/StoreFragment$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    :cond_0
    return-void
.end method
