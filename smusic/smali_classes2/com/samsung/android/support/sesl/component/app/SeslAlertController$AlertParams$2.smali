.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 977
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 982
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 983
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->mLabelIndex:I

    .line 984
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 985
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 989
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 991
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 993
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 992
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 994
    return-void

    .line 993
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMultiChoiceItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
