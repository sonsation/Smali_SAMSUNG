.class Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;
.super Ljava/lang/Object;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->-wrap0(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    .line 176
    :cond_0
    return-void
.end method
