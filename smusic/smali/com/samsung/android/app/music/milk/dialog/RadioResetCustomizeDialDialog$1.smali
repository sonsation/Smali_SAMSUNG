.class Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;
.super Ljava/lang/Object;
.source "RadioResetCustomizeDialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->initLayout(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->dismiss()V

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9052"

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
