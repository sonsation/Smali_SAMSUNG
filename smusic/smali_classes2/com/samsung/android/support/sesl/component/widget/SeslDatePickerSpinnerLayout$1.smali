.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V
    .locals 11
    .param p1, "picker"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 160
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "monthChanged":Z
    const/4 v0, 0x0

    .line 164
    .local v0, "dayChanged":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 166
    .local v1, "maxDayOfMonth":I
    if-ne p2, v1, :cond_0

    if-eq p3, v6, :cond_1

    :cond_0
    if-ne p2, v6, :cond_4

    if-ne p3, v1, :cond_4

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 189
    .end local v1    # "maxDayOfMonth":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .line 190
    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 189
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;III)V

    .line 191
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3, v9, v9, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;ZZZZ)V

    .line 194
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    .line 195
    return-void

    .line 170
    .restart local v1    # "maxDayOfMonth":I
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    sub-int v4, p3, p2

    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 172
    .end local v1    # "maxDayOfMonth":I
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 173
    if-ne p2, v10, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    if-nez p2, :cond_8

    if-ne p3, v10, :cond_8

    .line 174
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8, p3}, Ljava/util/Calendar;->set(II)V

    .line 178
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    sub-int v4, p3, p2

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 179
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 181
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v3

    sub-int v4, p3, p2

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 183
    const/4 v2, 0x1

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method
