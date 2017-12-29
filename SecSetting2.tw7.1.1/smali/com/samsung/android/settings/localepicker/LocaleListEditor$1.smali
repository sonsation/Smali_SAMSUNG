.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;
.super Landroid/database/DataSetObserver;
.source "LocaleListEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;
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
    .line 561
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 565
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 563
    return-void
.end method
