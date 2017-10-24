.class Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotHelpGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->showHelpGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->finish()V

    .line 32
    return-void
.end method
