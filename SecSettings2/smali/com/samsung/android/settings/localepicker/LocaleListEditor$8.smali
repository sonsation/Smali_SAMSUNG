.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-set0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-set1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V

    .line 255
    return-void
.end method
