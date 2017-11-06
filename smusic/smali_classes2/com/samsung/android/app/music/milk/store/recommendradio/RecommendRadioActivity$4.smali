.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecommendRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->showAdBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$4;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 323
    const-string v0, "RecommendRadioActivity"

    const-string/jumbo v1, "show - animation end"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method
