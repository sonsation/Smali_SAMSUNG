.class Lcom/samsung/android/settings/SmartStaySettings$6;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SmartStaySettings;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$6;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/SmartStaySettings$6;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/SmartStaySettings;->-wrap1(Lcom/samsung/android/settings/SmartStaySettings;)V

    .line 244
    return-void
.end method
