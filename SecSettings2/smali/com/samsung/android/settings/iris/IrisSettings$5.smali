.class Lcom/samsung/android/settings/iris/IrisSettings$5;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisSettings;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 622
    return-void
.end method
