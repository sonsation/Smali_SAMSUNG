.class Landroid/widget/SemExpandableListView$6;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$groupPos:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;
    .param p2, "val$animationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "val$groupPos"    # I

    .prologue
    .line 1142
    iput-object p1, p0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 35

    .prologue
    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1149
    .local v10, "childCount":I
    if-nez v10, :cond_0

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    .line 1152
    const/16 v31, 0x1

    return v31

    .line 1155
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    .line 1156
    .local v12, "expGroupPackedPosition":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 1157
    .local v20, "nextExpGroupPackedPosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v11

    .line 1158
    .local v11, "expGroupFlatPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v18

    .line 1160
    .local v18, "nextExpGroupFlatPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v15

    .line 1161
    .local v15, "firstVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v15

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1162
    .local v14, "expandedGroup":Landroid/view/View;
    if-nez v14, :cond_1

    .line 1165
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "startExpandAnimation() groupPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v33, v0

    .line 1165
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1166
    const-string/jumbo v33, ", firstPos="

    .line 1165
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1167
    const-string/jumbo v33, ", expGroupFlatPos="

    .line 1165
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    .line 1170
    const/16 v31, 0x1

    return v31

    .line 1173
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v18, v15

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1175
    .local v19, "nextExpandedGroup":Landroid/view/View;
    if-nez v19, :cond_3

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getBottom()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1177
    .local v17, "listBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    sub-int v32, v17, v32

    invoke-static/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    .line 1182
    .end local v17    # "listBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v7

    .line 1191
    .local v7, "animationDuration":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_7

    .line 1195
    add-int v26, v16, v15

    .line 1196
    .local v26, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1198
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    .line 1199
    .local v24, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1201
    .local v22, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-eqz v22, :cond_5

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1203
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 1194
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1179
    .end local v7    # "animationDuration":I
    .end local v8    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v9    # "child":Landroid/view/View;
    .end local v16    # "i":I
    .end local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v24    # "packedPos":J
    .end local v26    # "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v32

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v33

    sub-int v32, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    goto/16 :goto_0

    .line 1205
    .restart local v7    # "animationDuration":I
    .restart local v8    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v9    # "child":Landroid/view/View;
    .restart local v16    # "i":I
    .restart local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v24    # "packedPos":J
    .restart local v26    # "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get36(Landroid/widget/SemExpandableListView;)I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1206
    sget-object v31, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    .line 1207
    .local v28, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1210
    .end local v28    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v31

    if-eqz v31, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v31

    if-eqz v31, :cond_2

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap7(Landroid/widget/SemExpandableListView;I)I

    move-result v4

    .line 1213
    .local v4, "adjustedPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v23

    .line 1214
    .local v23, "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v31

    if-eqz v31, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 1215
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 1221
    new-instance v29, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1222
    .local v29, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1225
    .end local v29    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_2

    .line 1229
    .end local v4    # "adjustedPosition":I
    .end local v9    # "child":Landroid/view/View;
    .end local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v23    # "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .end local v24    # "packedPos":J
    .end local v26    # "position":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v14, v1, v7}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->size()I

    move-result v30

    .line 1233
    .local v30, "viewSnapshotsCount":I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1236
    .restart local v29    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/widget/SemExpandableListView;->-get36(Landroid/widget/SemExpandableListView;)I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/SemExpandableListView;->-wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1238
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1242
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v29    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_8
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    invoke-static/range {v31 .. v31}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1243
    .local v5, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1244
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v27, Landroid/animation/AnimatorSet;

    invoke-direct/range {v27 .. v27}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1247
    .local v27, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1248
    int-to-long v0, v7

    move-wide/from16 v32, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1249
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get19()Landroid/view/animation/ElasticCustom;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1250
    new-instance v31, Landroid/widget/SemExpandableListView$6$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/SemExpandableListView$6$1;-><init>(Landroid/widget/SemExpandableListView$6;Ljava/lang/Runnable;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1263
    invoke-virtual/range {v27 .. v27}, Landroid/animation/AnimatorSet;->start()V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get37(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->clear()V

    .line 1265
    const/16 v31, 0x0

    return v31
.end method
