.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;
.super Ljava/util/TimerTask;
.source "RecommendRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->initSpinner(Ljava/util/List;)V
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
    .line 276
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->access$300(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$3;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->access$200(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 280
    return-void
.end method
