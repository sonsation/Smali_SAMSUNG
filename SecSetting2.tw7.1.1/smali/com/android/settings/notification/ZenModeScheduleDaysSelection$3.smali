.class Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
    .param p2, "val$val"    # I

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get3(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    sget-object v2, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    .line 140
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get2(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    goto :goto_0

    .line 143
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    .line 144
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;->val$val:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 132
    return-void
.end method
