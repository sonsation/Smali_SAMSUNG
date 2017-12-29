.class public Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "SecDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SecDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/SecDropDownPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    .line 200
    invoke-direct {p0, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/SecDropDownPreference;->-set0(Lcom/android/settings/SecDropDownPreference;Z)Z

    .line 199
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 207
    :cond_0
    return-void

    .line 208
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1}, Lcom/android/settings/SecDropDownPreference;->-get3(Lcom/android/settings/SecDropDownPreference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    return-void

    .line 212
    :cond_2
    if-ltz p1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1, v0}, Lcom/android/settings/SecDropDownPreference;->-wrap0(Lcom/android/settings/SecDropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 219
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$ReselectionSpinner;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1, v2}, Lcom/android/settings/SecDropDownPreference;->-set0(Lcom/android/settings/SecDropDownPreference;Z)Z

    .line 205
    return-void
.end method
