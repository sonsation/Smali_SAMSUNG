.class final Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "DefaultUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setMaxSearchLength(Landroid/content/Context;Landroid/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(ILandroid/widget/Toast;)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 264
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$2;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 268
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    .local v0, "rst":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils$2;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 272
    :cond_0
    return-object v0
.end method
