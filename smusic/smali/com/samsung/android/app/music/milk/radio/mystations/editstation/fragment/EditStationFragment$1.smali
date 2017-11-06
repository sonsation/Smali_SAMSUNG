.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$1;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->onLoadFinished(Landroid/content/Loader;Lcom/samsung/android/app/music/common/model/Station;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    return-void
.end method
