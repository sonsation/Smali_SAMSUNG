.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 11
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 177
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "yearChanged":Z
    const/4 v3, 0x0

    .line 181
    .local v3, "monthChanged":Z
    const/4 v0, 0x0

    .line 182
    .local v0, "dayChanged":Z
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_7

    .line 183
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 185
    .local v2, "maxDayOfMonth":I
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 187
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v8

    .line 186
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v2

    .line 190
    :cond_0
    if-ne p2, v2, :cond_5

    const/4 v5, 0x1

    if-ne p3, v5, :cond_5

    .line 191
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 215
    .end local v2    # "maxDayOfMonth":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 217
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v8

    .line 216
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I

    move-result v2

    .line 218
    .restart local v2    # "maxDayOfMonth":I
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le v5, v2, :cond_1

    .line 219
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 221
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 223
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 222
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, "isLeap":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 225
    nop

    nop

    .end local v1    # "isLeap":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z

    .line 234
    .end local v2    # "maxDayOfMonth":I
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 235
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 234
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    .line 236
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v3, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V

    .line 239
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    .line 176
    return-void

    .line 192
    .restart local v2    # "maxDayOfMonth":I
    :cond_5
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    if-ne p3, v2, :cond_6

    .line 193
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 195
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 197
    .end local v2    # "maxDayOfMonth":I
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_a

    .line 198
    const/16 v5, 0xb

    if-ne p2, v5, :cond_8

    if-nez p3, :cond_8

    .line 199
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 205
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 200
    :cond_8
    if-nez p2, :cond_9

    const/16 v5, 0xb

    if-ne p3, v5, :cond_9

    .line 201
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 203
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 206
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_b

    .line 207
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    sub-int v6, p3, p2

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 208
    const/4 v3, 0x1

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
