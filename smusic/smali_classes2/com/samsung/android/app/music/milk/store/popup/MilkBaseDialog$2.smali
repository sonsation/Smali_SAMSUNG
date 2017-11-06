.class Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;
.super Ljava/lang/Object;
.source "MilkBaseDialog.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    iput p1, v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColor:I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->primaryColorChanged(I)V

    .line 320
    return-void
.end method
