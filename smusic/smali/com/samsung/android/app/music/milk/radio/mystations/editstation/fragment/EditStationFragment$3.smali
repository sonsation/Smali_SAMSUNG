.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$3;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText$OnSoftKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationNameArea(Landroid/view/View;)V
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
    .line 667
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 670
    const-string v0, "EditStationFragment"

    const-string/jumbo v1, "onDismissed : Station Name - KeyPad is dismissed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$3;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->clearFocus()V

    .line 672
    return-void
.end method
