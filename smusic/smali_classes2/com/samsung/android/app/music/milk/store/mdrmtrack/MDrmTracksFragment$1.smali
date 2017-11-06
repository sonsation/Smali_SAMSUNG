.class Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$1;
.super Ljava/lang/Object;
.source "MDrmTracksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 166
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 167
    return-void
.end method
