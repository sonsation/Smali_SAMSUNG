.class Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/StoreFragment$1;->moveMainTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/StoreFragment$1;

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/StoreFragment$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/StoreFragment$1;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/StoreFragment$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;->val$a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/StoreFragment$1$1;->val$a:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 276
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->selectTab(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
