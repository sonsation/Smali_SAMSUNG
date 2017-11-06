.class Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask$2;
.super Ljava/lang/Object;
.source "MDrmGetLicenseTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;

.field final synthetic val$expiredCnt:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask$2;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask$2;->val$expiredCnt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask$2;->val$expiredCnt:I

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask$2;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;->access$000(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    :cond_0
    return-void
.end method
