.class Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;
.super Ljava/lang/Object;
.source "DisabledDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .line 83
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$000(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$100(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$100(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->startChecking()V

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$200(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$100(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->access$200(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
