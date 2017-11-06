.class Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;
.super Ljava/lang/Object;
.source "MilkLegalNoticeBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;->buildNotice(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->this$0:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->val$context:Landroid/content/Context;

    const-string v1, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->launchWebLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method
